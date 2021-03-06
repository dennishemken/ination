﻿-- Function: strip_tags(text)

-- DROP FUNCTION strip_tags(text);

CREATE OR REPLACE FUNCTION strip_tags(text)
  RETURNS text AS
$BODY$
    SELECT 
                regexp_replace(
	regexp_replace(
		regexp_replace(
			regexp_replace(
				regexp_replace(
					regexp_replace(
						regexp_replace(
							regexp_replace(
								replace(
									replace(
										replace(
											replace(
												replace(
													replace($1,'<BR>',E'\r\n'),
													'&gt;','>'),
												'&lt;','<'),
											'&amp;','&'),
										'&quot;',E'\"'),
									'&nbsp;',' '),
								E'\r\n[A-Z]:[^\r|^\n]*',E'\r\n','g'),
							E'--[A-Za-z]*=[A-Za-z0-9]*=[^\r|^\n]*',' ','g'),
						E'Content-[A-Za-z-]*:[^\r|^\n]*[\r|\n]','', 'gi'),
				E'<([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4})>', E'\\1','g'),
			E'(?x)<[^>]*?(\s alt \s* = \s* ([\'"]) ([^>]*?) \\2) [^>]*? >',E'\\3','g'),
		E'(?x)(<STYLE[^>]*\s*>[^<]*</STYLE[^>]*\s*>)','','ig'),
	E'(?x)(< [^>]*? >)','','ig'),
E'(\r|\n)+',E'\n','ig')

$BODY$
  LANGUAGE 'sql' 
 
 