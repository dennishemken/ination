<?
include_once ('account/Preference.php');
include_once ('page/iPhonePage.php');

class TestController extends PublicApplicationController
{
	public function __construct()
	{
		$this->page = new PublicPage();
	}
	
	public function viewAction()
	{
		$prefArray = Preference::getPreferenceArray( 22, 'addressbook' );
		pret( $prefArray );
	}

	public function allRegionQueryAction()
	{
		/* BEFORE RUNNING:
				Create SSH tunnel to countach via it's 10.1.100.23 interface. (i.e. look like you're coming from 10.1.100.23)
				login to countach via the edewhurst login.
				Then you can use the "localhost" address and port 3200 to connect through the tunnel.
			ssh -L 3200:10.1.100.23:5432 edewhurst@countach.ination.com
		*/

		// Database Settings:
		$db_config = Array(
			'host' => 'localhost',
			'port' => '3200',
			'user' => 'postgres',
			'pwd' => '',
			'db_type' => 'pgsql' );

			// Get all Database Names from PostGres:
		$databaseObj =	new PG_Database( $db_config['host'], $db_config['port'],	'postgres', $db_config['user'], $db_config['pwd'] );
		$result = $databaseObj->execute( "SELECT datname FROM pg_database order by datname" );
		while( $row = $result->next() )
		{
			$database_array[] = $row['datname'];
		}
/*
		$database_array = Array( 'wrightco', 'test_gierlaugustine', 'test_smarsh', 'testimport', 'texastaxadvisors', 'tfg', 'thepostoakgroup', 'thompson-financial',
			'tklocke', 'tntfin', 'trademonster', 'training', 'trainingbeta', 'trainingbeta.20090407', 'trainingbeta2', 'trc', 'trial', 'tuts',
			'uOffice_template', 'ufc', 'universalfinancial', 'uragroup', 'vsrfin', 'wallace', 'waltonlourcey', 'waynefirebaugh',
			'wealthbydesign', 'wealthcare-partners', 'webdemo', 'webdemo2', 'wfc', 'wheeler', 'whitehall', 'wilsonfinancialservices', 
			'wilsonfinancialsolutions', 'woodbury', 'woodsidecap', 'wrightco', 'wts', 'yimllc', 'yosemitecapital', 'young', 'zaintz', 'zz_afm', 
			'zz_aigbank', 'zz_centerfin', 'zz_cha', 'zzafm' );
*/
			// Exclude these Databases from Queries. They aren't full CRM databases.
		$non_crm_databases = Array( 	
			'askbruce', 'asktheexpert', 'blank', 'ffp_ocr_oct08', 'meynard_test', 'postgres', 'temp_highmark', 'template0', 
			'template1','university','zz_tammy_leonard'	
			);

			// For all Databases, run a set of queries:
		foreach( $database_array as $database_name )
		{
			print( "$database_name" );
			if( in_array($database_name, $non_crm_databases) )
			{
				print( ", '-'<br>" );
				continue;
			}
				// Connect to DB
			$databaseObj =	new PG_Database( $db_config['host'], $db_config['port'],	$database_name, $db_config['user'], $db_config['pwd'] );

				//	Accounts logged in in the last 3 months
			$result = $databaseObj->execute( 
				"SELECT count(*) as cnt FROM phpgw_accounts 
				WHERE account_lastlogin > EXTRACT(EPOCH FROM (CURRENT_DATE - INTERVAL '3 month' ) )
				AND account_lid <> 'admin';" );
			$account3_count = $result->fetch_field( 'cnt' );
				//	Accounts logged in in the last 6 months
			$result = $databaseObj->execute( 
				"SELECT count(*) as cnt FROM phpgw_accounts 
				WHERE account_lastlogin > EXTRACT(EPOCH FROM (CURRENT_DATE - INTERVAL '6 month' ) )
				AND account_lid <> 'admin';" );
			$account6_count = $result->fetch_field( 'cnt' );
				// Count Contacts
			$result = $databaseObj->execute( "SELECT count(*) as cnt FROM phpgw_addressbook" );
			$contact_count = $result->fetch_field( 'cnt' );
				// Calendar
			$result = $databaseObj->execute( "SELECT count(*) as cnt FROM phpgw_cal" );
			$cal_count = $result->fetch_field( 'cnt' );
				// Notes
			$result = $databaseObj->execute( "SELECT count(*) as cnt FROM phpgw_infolog" );
			$infolog_count = $result->fetch_field( 'cnt' );
				// Campaigns
			$result = $databaseObj->execute( "SELECT count(*) as cnt FROM phpgw_campaign" );
			$camp_count = $result->fetch_field( 'cnt' );
				// Custom Fields
			$result = $databaseObj->execute( "SELECT count(*) as cnt FROM phpgw_custom_fields" );
			$cust_fields_count = $result->fetch_field( 'cnt' );
			
				// Using apps:
				//'iDoc', 'ufc_library', 'im', 'uask', 'tts', 'surveys', 'buyme', 'audio'
			$result = $databaseObj->execute( "Select count(*) as cnt from phpgw_applications where app_name = 'iDoc'" );
			$idoc_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'ufc_library'" );
			$ufc_library_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'im'" );
			$im_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'uask'" );
			$uask_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'tts'" );
			$tts_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'surveys'" );
			$surveys_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'buyme'" );
			$buyme_count = $result->fetch_field( 'cnt' );
			$result = $databaseObj->execute( "SELECT count(*) as cnt from phpgw_acl where acl_appname = 'audio'" );
			$audio_count = $result->fetch_field( 'cnt' );
			print(
				", $account3_count, $account6_count, $contact_count, $cal_count, $infolog_count, $camp_count, $cust_fields_count".
				", $idoc_count, $ufc_library_count, $im_count, $uask_count, $tts_count, $surveys_count, $buyme_count, $audio_count<br>" );

			$databaseObj->close();
		}
		exit();
	}
}
?>