
--SELECT COM INNER JOIN E SUB CONSULTAS

----------------------------------------------------------------------------------------------------------
SELECT  cidade.nome, COUNT(veiculosbaixados.codigo) AS Soma_dos_baixados, veiculosbaixados.observacao
FROM cidade
INNER JOIN veiculos
ON veiculos.codigo_cidade=cidade.codigo
INNER JOIN veiculosbaixados
ON veiculosbaixados.veiculo_chassis=veiculos.chassis
GROUP BY cidade.nome, veiculosbaixados.observacao
ORDER BY Soma_dos_baixados DESC

--Group by com mais de uma coluna
SELECT  p.nome, p.endereco, COUNT(v.placa) AS Quant_placas
FROM proprietarios p
INNER JOIN veiculos v
ON  v.cnh_proprietarios = p.cnh
GROUP BY p.nome, p.endereco
HAVING COUNT(v.placa)>=2


--Retorne a média de idade dos pacientes atendidos pelo médico JOSE
SELECT medico.nome, ROUND(AVG(paciente.idade),2) AS media_idade
FROM medico
INNER JOIN consulta
ON consulta.cod_med=medico.cod_med
INNER JOIN paciente
ON paciente.cod_pac=consulta.cod_pac
GROUP BY medico.nome
HAVING (medico.nome)='JOSE'

--Retorno todos médico (nome) e os pacientes (nome) e os pacientes (nome) que atendidos por cada médico, por ordem alfabética
SELECT medico.nome, paciente.nome
FROM medico
INNER JOIN consulta
ON consulta.cod_med=medico.cod_med
INNER JOIN paciente
ON paciente.cod_pac=consulta.cod_pac
ORDER BY medico.nome ASC

--cod_med, nome, idade e especialidade dos médicos
SELECT m.cod_med, m.nome, m.idade, e.espec
FROM medico m
INNER JOIN med_espec me
ON m.cod_med=me.cod_med
INNER JOIN especialidade e
ON e.cod_espec=me.cod_espec

--cod_med e nome somente dos médicos que tem menos de 30 anos
SELECT medico.cod_med, medico.nome
FROM medico
WHERE (idade<30)

--alias
SELECT d.nome, d.rg, d.salario
FROM prova_degustador d
WHERE d.salario>5000 OR d.nome!='Alesandra'

SELECT Nome, SUM(Quantidade), SUM(Quantidade * VlUnitario) AS Valor_total
FROM Produtos
GROUP BY Nome
HAVING SUM(Quantidade) > 15 AND SUM (Quantidade * VlUnitario) >= 5000.00