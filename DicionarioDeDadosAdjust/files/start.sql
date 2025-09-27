SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
DROP FUNCTION IF EXISTS public."autoriasBIU"();
CREATE FUNCTION public."autoriasBIU"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
  vdias smallint;
begin
  select current_date-MAX(dtpublicacao) into vdias
         from livros inner join autorias
                     on livros.pklivro=autorias.ukcelivro
         where autorias.ukceautor=new.ukceautor
         group by autorias.ukceautor
         order by autorias.ukceautor;
  if ( vdias<731 )
  then
    raise exception 'Autor (%) publicou a menos de 2 anos.',new.ukceautor;
    return null;
else
    return new;
  end if;
end;
$$;
ALTER FUNCTION public."autoriasBIU"() OWNER TO postgres;
SET default_tablespace = '';
SET default_table_access_method = heap;