Aula 1 - 12/02

set serveroutput on -- habilita o servidor de sa�da de dados

begin
    dbms_output.put_line('Bom dia');
end;

-- concatenando texto com n�meros || pipe pipe
begin
    dbms_output.put_line('Novo sal�rio R$ '|| 1212 * 1.25);
end;

declare
    v_sal_min number(10,2) := 1518;
    v_sal_reaj number(10,2);
begin
    v_sal_reaj := v_sal_min * 1.25;
    dbms_output.put_line('Novo sal�rio R$ '|| v_sal_reaj);
end;

--Criar um bloco PL-SQL para calcular o valor em REAIS de 45 d�lares, 
--sendo que o valor do c�mbio a ser considerado � de R$????.

declare
    v_dolar number(10,2) := &valor_cotacao;
    v_real v_dolar%type := &Valor_dolar;
begin
    v_real := v_dolar * 45;
    dbms_output.put_line('Cota��o d�lar - 12/02/2025 US$ '||v_dolar);
    dbms_output.put_line('Conver��o de US$45 para R$ '||v_real);
end;

set VERIFY off -- desabilita a verifica��o da vm


Criar um bloco PL-SQL para calcular o valor das parcelas de uma compra de um 
carro,
nas seguintes condi��es: 
OBSERVA��O: 
1 - Parcelas para aquisi��o em 10 pagamentos. 
2 - O valor da compra dever� ser informado em tempo de execu��o. 
3 � O valor total dos juros � de 3% e dever� ser aplicado sobre o montante 
financiado 
4 � No final informar o valor de cada parcela.

declare
    v_bem number(10,2) := &valor_do_carro;
    v_parc v_bem%type := (v_bem * 1.03)/10;
begin
    dbms_output.put_line('Valor do ve�culo - R$ '||v_bem);
    dbms_output.put_line('Valor das presta��es - R$ '||v_parc);
end;

Criar um bloco PL-SQL para calcular o valor de cada parcela de uma compra de um
carro, nas seguintes condi��es:
- Parcelas para aquisi��o em 6 pagamentos. 
- Parcelas para aquisi��o em 12 pagamentos. 
- Parcelas para aquisi��o em 18 pagamentos. 
OBSERVA��O: 
1 � Dever� ser dada uma entrada de 20% do valor da compra. 
2 � Dever� ser aplicada uma taxa juros, no saldo restante, nas seguintes condi��es: 
3 � No final informar o valor das parcelas para as 3 formas de pagamento, com o 
Valor de aquisi��o de 10.000.
A � Pagamento em 6 parcelas: 10%. 
B � Pagamento em 12 parcelas: 15%. 
C � Pagamento em 18 parcelas: 20%. 



