DO
$do$
BEGIN
   IF EXISTS (SELECT FROM pg_database WHERE datname = 'teste') THEN
      RAISE NOTICE 'Database already exists';  -- optional
   ELSE
      PERFORM dblink_exec('dbname=' || current_database()  -- current db
                        , 'CREATE DATABASE teste WITH 
                            OWNER = postgres
                            ENCODING = ''UTF8\''
                            CONNECTION LIMIT = -1');
   END IF;
END
$do$;