SELECT
"public".client.clid,
"public".mccl.code
FROM
"public".client
Inner Join "public".mccl ON "public".mccl.mccl_code = "public".client.category
