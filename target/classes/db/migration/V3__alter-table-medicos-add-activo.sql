ALTER TABLE medicos ADD activo SMALLINT;
ALTER TABLE medicos ALTER COLUMN activo SET DEFAULT 1;
UPDATE medicos SET activo = 1;