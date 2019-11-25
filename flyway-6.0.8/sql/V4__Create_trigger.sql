CREATE OR REPLACE FUNCTION estoque_func
()
RETURNS trigger AS $teste_trigger$
BEGIN
    IF NEW.quantidade_em_estoque < OLD.quantidade_minima then
	RAISE NOTICE 'O produto % em quantidade critica no estoque, compra ai por favor, obrigado, volte sempre. Quantidade no estoque: (%)', OLD.nome, NEW.quantidade_em_estoque;
END
IF;
RETURN NEW;
END;
$teste_trigger$ LANGUAGE plpgsql;


CREATE TRIGGER log_trigger
AFTER
UPDATE ON INGREDIENTES
FOR EACH ROW
EXECUTE PROCEDURE estoque_func
();