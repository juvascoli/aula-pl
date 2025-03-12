Aula 1 - 12/02

set serveroutput on -- habilita o servidor de saída de dados

begin
    dbms_output.put_line('Bom dia');
end;

-- concatenando texto com números || pipe pipe
begin
    dbms_output.put_line('Novo salário R$ '|| 1212 * 1.25);
end;

declare
    v_sal_min number(10,2) := 1518;
    v_sal_reaj number(10,2);
begin
    v_sal_reaj := v_sal_min * 1.25;
    dbms_output.put_line('Novo salário R$ '|| v_sal_reaj);
end;

--Criar um bloco PL-SQL para calcular o valor em REAIS de 45 dólares, 
--sendo que o valor do câmbio a ser considerado é de R$????.

declare
    v_dolar number(10,2) := &valor_cotacao;
    v_real v_dolar%type := &Valor_dolar;
begin
    v_real := v_dolar * 45;
    dbms_output.put_line('Cotação dólar - 12/02/2025 US$ '||v_dolar);
    dbms_output.put_line('Converção de US$45 para R$ '||v_real);
end;

set VERIFY off -- desabilita a verificação da vm


Criar um bloco PL-SQL para calcular o valor das parcelas de uma compra de um 
carro,
nas seguintes condições: 
OBSERVAÇÃO: 
1 - Parcelas para aquisição em 10 pagamentos. 
2 - O valor da compra deverá ser informado em tempo de execução. 
3 – O valor total dos juros é de 3% e deverá ser aplicado sobre o montante 
financiado 
4 – No final informar o valor de cada parcela.

declare
    v_bem number(10,2) := &valor_do_carro;
    v_parc v_bem%type := (v_bem * 1.03)/10;
begin
    dbms_output.put_line('Valor do veículo - R$ '||v_bem);
    dbms_output.put_line('Valor das prestações - R$ '||v_parc);
end;

Criar um bloco PL-SQL para calcular o valor de cada parcela de uma compra de um
carro, nas seguintes condições:
- Parcelas para aquisição em 6 pagamentos. 
- Parcelas para aquisição em 12 pagamentos. 
- Parcelas para aquisição em 18 pagamentos. 
OBSERVAÇÃO: 
1 – Deverá ser dada uma entrada de 20% do valor da compra. 
2 – Deverá ser aplicada uma taxa juros, no saldo restante, nas seguintes condições: 
3 – No final informar o valor das parcelas para as 3 formas de pagamento, com o 
Valor de aquisição de 10.000.
A – Pagamento em 6 parcelas: 10%. 
B – Pagamento em 12 parcelas: 15%. 
C – Pagamento em 18 parcelas: 20%. 



