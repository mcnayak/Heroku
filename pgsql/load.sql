do $$
begin
for r in 1..5000 loop
  INSERT INTO salesforce.bulk2 (url) VALUES  ('http://www.postgresqltutorial.com');
end loop;
end;
$$;