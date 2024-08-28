-- Criação do banco de dados
DROP DATABASE IF EXISTS paxpedb;
CREATE DATABASE paxpedb;

-- Conecte-se ao banco de dados criado
\c paxpedb

-- Criação dos esquemas
CREATE SCHEMA IF NOT EXISTS paxpe;
CREATE SCHEMA IF NOT EXISTS paxpestg;


-- schema
CREATE SCHEMA IF NOT EXISTS PAXPE;

-- schema stage
CREATE SCHEMA IF NOT EXISTS paxpestg;

-- Script para criar a tabela 'retorno_mensal' no esquema 'paxpe'
CREATE TABLE paxpe.retorno_mensal (
    ticker VARCHAR(20), 
    data TIMESTAMP, 
    abertura DOUBLE PRECISION, 
    alta DOUBLE PRECISION, 
    baixa DOUBLE PRECISION, 
    fechamento DOUBLE PRECISION, 
    volume BIGINT, 
    dividendos DOUBLE PRECISION, 
    desdobramentos DOUBLE PRECISION, 
    fechamento_mes_anterior DOUBLE PRECISION, 
    valor_retorno DOUBLE PRECISION, 
    porcentagem_retorno DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.retorno_mensal.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.retorno_mensal.data IS 'Data do registro';
COMMENT ON COLUMN paxpe.retorno_mensal.abertura IS 'Preço de abertura';
COMMENT ON COLUMN paxpe.retorno_mensal.alta IS 'Preço mais alto do dia';
COMMENT ON COLUMN paxpe.retorno_mensal.baixa IS 'Preço mais baixo do dia';
COMMENT ON COLUMN paxpe.retorno_mensal.fechamento IS 'Preço de fechamento';
COMMENT ON COLUMN paxpe.retorno_mensal.volume IS 'Volume de negociações';
COMMENT ON COLUMN paxpe.retorno_mensal.dividendos IS 'Dividendos pagos';
COMMENT ON COLUMN paxpe.retorno_mensal.desdobramentos IS 'Desdobramentos de ações';
COMMENT ON COLUMN paxpe.retorno_mensal.fechamento_mes_anterior IS 'Preço de fechamento do mês anterior';
COMMENT ON COLUMN paxpe.retorno_mensal.valor_retorno IS 'Valor do retorno';
COMMENT ON COLUMN paxpe.retorno_mensal.porcentagem_retorno IS 'Percentual de retorno';
COMMENT ON COLUMN paxpe.retorno_mensal.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.retorno_mensal.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'captacao_mercado' no esquema 'paxpe'
CREATE TABLE paxpe.captacao_mercado (
    ticker VARCHAR(20), 
    nome_curto VARCHAR(100), 
    nome_exibicao VARCHAR(100), 
    preco_mercado_regular DOUBLE PRECISION, 
    mudanca_mercado_regular DOUBLE PRECISION, 
    mudanca_percentual_mercado_regular DOUBLE PRECISION, 
    volume_mercado_regular BIGINT, 
    capitalizacao_mercado BIGINT, 
    nome_exchange_completa VARCHAR(100), 
    nome_fonte_cotacao VARCHAR(100), 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.captacao_mercado.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.captacao_mercado.nome_curto IS 'Nome curto da ação';
COMMENT ON COLUMN paxpe.captacao_mercado.nome_exibicao IS 'Nome de exibição da ação';
COMMENT ON COLUMN paxpe.captacao_mercado.preco_mercado_regular IS 'Preço de mercado regular';
COMMENT ON COLUMN paxpe.captacao_mercado.mudanca_mercado_regular IS 'Mudança de preço de mercado regular';
COMMENT ON COLUMN paxpe.captacao_mercado.mudanca_percentual_mercado_regular IS 'Mudança percentual de preço de mercado regular';
COMMENT ON COLUMN paxpe.captacao_mercado.volume_mercado_regular IS 'Volume de mercado regular';
COMMENT ON COLUMN paxpe.captacao_mercado.capitalizacao_mercado IS 'Capitalização de mercado';
COMMENT ON COLUMN paxpe.captacao_mercado.nome_exchange_completa IS 'Nome completo da bolsa de valores';
COMMENT ON COLUMN paxpe.captacao_mercado.nome_fonte_cotacao IS 'Nome da fonte da cotação';
COMMENT ON COLUMN paxpe.captacao_mercado.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.captacao_mercado.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'cadastro' no esquema 'paxpe'
CREATE TABLE paxpe.cadastro (
    ticker VARCHAR(20) NOT NULL, 
    setor VARCHAR(100), 
    industria VARCHAR(100), 
    funcionarios INTEGER, 
    cidade VARCHAR(100), 
    estado VARCHAR(100), 
    pais VARCHAR(100), 
    website VARCHAR(255), 
    resumo_negocios TEXT, 
    exchange VARCHAR(100), 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.cadastro.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.cadastro.setor IS 'Setor da empresa';
COMMENT ON COLUMN paxpe.cadastro.industria IS 'Indústria da empresa';
COMMENT ON COLUMN paxpe.cadastro.funcionarios IS 'Número de funcionários';
COMMENT ON COLUMN paxpe.cadastro.cidade IS 'Cidade onde a empresa está localizada';
COMMENT ON COLUMN paxpe.cadastro.estado IS 'Estado onde a empresa está localizada';
COMMENT ON COLUMN paxpe.cadastro.pais IS 'País onde a empresa está localizada';
COMMENT ON COLUMN paxpe.cadastro.website IS 'Website da empresa';
COMMENT ON COLUMN paxpe.cadastro.resumo_negocios IS 'Resumo dos negócios da empresa';
COMMENT ON COLUMN paxpe.cadastro.exchange IS 'Bolsa de valores onde a ação é negociada';
COMMENT ON COLUMN paxpe.cadastro.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.cadastro.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'financas' no esquema 'paxpe'
CREATE TABLE paxpe.financas (
    ticker VARCHAR(20) NOT NULL, 
    capitalizacao_mercado BIGINT, 
    valor_empresa BIGINT, 
    receita BIGINT, 
    lucros_brutos BIGINT, 
    lucro_liquido BIGINT, 
    ebitda BIGINT, 
    divida_total BIGINT, 
    caixa_total BIGINT, 
    dividend_yield DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.financas.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.financas.capitalizacao_mercado IS 'Capitalização de mercado';
COMMENT ON COLUMN paxpe.financas.valor_empresa IS 'Valor da empresa';
COMMENT ON COLUMN paxpe.financas.receita IS 'Receita total';
COMMENT ON COLUMN paxpe.financas.lucros_brutos IS 'Lucros brutos';
COMMENT ON COLUMN paxpe.financas.lucro_liquido IS 'Lucro líquido';
COMMENT ON COLUMN paxpe.financas.ebitda IS 'EBITDA';
COMMENT ON COLUMN paxpe.financas.divida_total IS 'Dívida total';
COMMENT ON COLUMN paxpe.financas.caixa_total IS 'Caixa total';
COMMENT ON COLUMN paxpe.financas.dividend_yield IS 'Dividend yield';
COMMENT ON COLUMN paxpe.financas.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.financas.dthr_igtao IS 'Data e hora da criação do registro';


-- Script para criar a tabela 'mercado' no esquema 'paxpe'
CREATE TABLE paxpe.mercado (
    ticker VARCHAR(20) NOT NULL, 
    preco_atual DOUBLE PRECISION, 
    fechamento_anterior DOUBLE PRECISION, 
    abertura DOUBLE PRECISION, 
    minimo_dia DOUBLE PRECISION, 
    maximo_dia DOUBLE PRECISION, 
    minimo_52_semanas DOUBLE PRECISION, 
    maximo_52_semanas DOUBLE PRECISION, 
    volume BIGINT, 
    volume_medio BIGINT, 
    beta DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.mercado.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.mercado.preco_atual IS 'Preço atual';
COMMENT ON COLUMN paxpe.mercado.fechamento_anterior IS 'Preço de fechamento anterior';
COMMENT ON COLUMN paxpe.mercado.abertura IS 'Preço de abertura';
COMMENT ON COLUMN paxpe.mercado.minimo_dia IS 'Preço mínimo do dia';
COMMENT ON COLUMN paxpe.mercado.maximo_dia IS 'Preço máximo do dia';
COMMENT ON COLUMN paxpe.mercado.minimo_52_semanas IS 'Preço mínimo dos últimos 52 semanas';
COMMENT ON COLUMN paxpe.mercado.maximo_52_semanas IS 'Preço máximo dos últimos 52 semanas';
COMMENT ON COLUMN paxpe.mercado.volume IS 'Volume de negociações';
COMMENT ON COLUMN paxpe.mercado.volume_medio IS 'Volume médio de negociações';
COMMENT ON COLUMN paxpe.mercado.beta IS 'Beta da ação';
COMMENT ON COLUMN paxpe.mercado.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.mercado.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'dividendos' no esquema 'paxpe'
CREATE TABLE paxpe.dividendos (
    ticker VARCHAR(20) NOT NULL, 
    taxa_dividendo DOUBLE PRECISION, 
    data_exdividendo VARCHAR(20), 
    indice_distribuicao DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.dividendos.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.dividendos.taxa_dividendo IS 'Taxa de dividendo';
COMMENT ON COLUMN paxpe.dividendos.data_exdividendo IS 'Data ex-dividendo';
COMMENT ON COLUMN paxpe.dividendos.indice_distribuicao IS 'Índice de distribuição';
COMMENT ON COLUMN paxpe.dividendos.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.dividendos.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'valuation' no esquema 'paxpe'
CREATE TABLE paxpe.valuation (
    ticker VARCHAR(20) NOT NULL, 
    pl_futuro DOUBLE PRECISION, 
    pl_retroativo DOUBLE PRECISION, 
    preco_booking DOUBLE PRECISION, 
    indice_preco_lucro_cresc DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpe.valuation.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpe.valuation.pl_futuro IS 'P/E Forward';
COMMENT ON COLUMN paxpe.valuation.pl_retroativo IS 'P/E Trailing';
COMMENT ON COLUMN paxpe.valuation.preco_booking IS 'Preço de booking';
COMMENT ON COLUMN paxpe.valuation.indice_preco_lucro_cresc IS 'Peg Ratio';
COMMENT ON COLUMN paxpe.valuation.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpe.valuation.dthr_igtao IS 'Data e hora da criação do registro';



---------------------- stage 

-- Script para criar a tabela 'temp_retorno_mensal' no esquema 'paxpestg'
CREATE TABLE paxpestg.temp_retorno_mensal (
    ticker VARCHAR(20), 
    data TIMESTAMP, 
    abertura DOUBLE PRECISION, 
    alta DOUBLE PRECISION, 
    baixa DOUBLE PRECISION, 
    fechamento DOUBLE PRECISION, 
    volume BIGINT, 
    dividendos DOUBLE PRECISION, 
    desdobramentos DOUBLE PRECISION, 
    fechamento_mes_anterior DOUBLE PRECISION, 
    valor_retorno DOUBLE PRECISION, 
    porcentagem_retorno DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.data IS 'Data do registro';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.abertura IS 'Preço de abertura';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.alta IS 'Preço mais alto do dia';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.baixa IS 'Preço mais baixo do dia';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.fechamento IS 'Preço de fechamento';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.volume IS 'Volume de negociações';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.dividendos IS 'Dividendos pagos';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.desdobramentos IS 'Desdobramentos de ações';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.fechamento_mes_anterior IS 'Preço de fechamento do mês anterior';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.valor_retorno IS 'Valor do retorno';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.porcentagem_retorno IS 'Percentual de retorno';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_retorno_mensal.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'captacao_mercado' no esquema 'paxpe'
CREATE TABLE paxpestg.temp_captacao_mercado (
    ticker VARCHAR(20), 
    nome_curto VARCHAR(100), 
    nome_exibicao VARCHAR(100), 
    preco_mercado_regular DOUBLE PRECISION, 
    mudanca_mercado_regular DOUBLE PRECISION, 
    mudanca_percentual_mercado_regular DOUBLE PRECISION, 
    volume_mercado_regular BIGINT, 
    capitalizacao_mercado BIGINT, 
    nome_exchange_completa VARCHAR(100), 
    nome_fonte_cotacao VARCHAR(100), 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.nome_curto IS 'Nome curto da ação';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.nome_exibicao IS 'Nome de exibição da ação';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.preco_mercado_regular IS 'Preço de mercado regular';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.mudanca_mercado_regular IS 'Mudança de preço de mercado regular';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.mudanca_percentual_mercado_regular IS 'Mudança percentual de preço de mercado regular';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.volume_mercado_regular IS 'Volume de mercado regular';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.capitalizacao_mercado IS 'Capitalização de mercado';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.nome_exchange_completa IS 'Nome completo da bolsa de valores';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.nome_fonte_cotacao IS 'Nome da fonte da cotação';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_captacao_mercado.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'temp_cadastro' no esquema 'paxpestg'
CREATE TABLE paxpestg.temp_cadastro (
    ticker VARCHAR(20) NOT NULL, 
    setor VARCHAR(100), 
    industria VARCHAR(100), 
    funcionarios INTEGER, 
    cidade VARCHAR(100), 
    estado VARCHAR(100), 
    pais VARCHAR(100), 
    website VARCHAR(255), 
    resumo_negocios TEXT, 
    exchange VARCHAR(100), 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_cadastro.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_cadastro.setor IS 'Setor da empresa';
COMMENT ON COLUMN paxpestg.temp_cadastro.industria IS 'Indústria da empresa';
COMMENT ON COLUMN paxpestg.temp_cadastro.funcionarios IS 'Número de funcionários';
COMMENT ON COLUMN paxpestg.temp_cadastro.cidade IS 'Cidade onde a empresa está localizada';
COMMENT ON COLUMN paxpestg.temp_cadastro.estado IS 'Estado onde a empresa está localizada';
COMMENT ON COLUMN paxpestg.temp_cadastro.pais IS 'País onde a empresa está localizada';
COMMENT ON COLUMN paxpestg.temp_cadastro.website IS 'Website da empresa';
COMMENT ON COLUMN paxpestg.temp_cadastro.resumo_negocios IS 'Resumo dos negócios da empresa';
COMMENT ON COLUMN paxpestg.temp_cadastro.exchange IS 'Bolsa de valores onde a ação é negociada';
COMMENT ON COLUMN paxpestg.temp_cadastro.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_cadastro.dthr_igtao IS 'Data e hora da criação do registro';


-- Script para criar a tabela 'temp_financas' no esquema 'paxpestg'
CREATE TABLE paxpestg.temp_financas (
    ticker VARCHAR(20) NOT NULL, 
    capitalizacao_mercado BIGINT, 
    valor_empresa BIGINT, 
    receita BIGINT, 
    lucros_brutos BIGINT, 
    lucro_liquido BIGINT, 
    ebitda BIGINT, 
    divida_total BIGINT, 
    caixa_total BIGINT, 
    dividend_yield DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_financas.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_financas.capitalizacao_mercado IS 'Capitalização de mercado';
COMMENT ON COLUMN paxpestg.temp_financas.valor_empresa IS 'Valor da empresa';
COMMENT ON COLUMN paxpestg.temp_financas.receita IS 'Receita total';
COMMENT ON COLUMN paxpestg.temp_financas.lucros_brutos IS 'Lucros brutos';
COMMENT ON COLUMN paxpestg.temp_financas.lucro_liquido IS 'Lucro líquido';
COMMENT ON COLUMN paxpestg.temp_financas.ebitda IS 'EBITDA';
COMMENT ON COLUMN paxpestg.temp_financas.divida_total IS 'Dívida total';
COMMENT ON COLUMN paxpestg.temp_financas.caixa_total IS 'Caixa total';
COMMENT ON COLUMN paxpestg.temp_financas.dividend_yield IS 'Dividend yield';
COMMENT ON COLUMN paxpestg.temp_financas.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_financas.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'temp_mercado' no esquema 'paxpestg'
CREATE TABLE paxpestg.temp_mercado (
    ticker VARCHAR(20) NOT NULL, 
    preco_atual DOUBLE PRECISION, 
    fechamento_anterior DOUBLE PRECISION, 
    abertura DOUBLE PRECISION, 
    minimo_dia DOUBLE PRECISION, 
    maximo_dia DOUBLE PRECISION, 
    minimo_52_semanas DOUBLE PRECISION, 
    maximo_52_semanas DOUBLE PRECISION, 
    volume BIGINT, 
    volume_medio BIGINT, 
    beta DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_mercado.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_mercado.preco_atual IS 'Preço atual';
COMMENT ON COLUMN paxpestg.temp_mercado.fechamento_anterior IS 'Preço de fechamento anterior';
COMMENT ON COLUMN paxpestg.temp_mercado.abertura IS 'Preço de abertura';
COMMENT ON COLUMN paxpestg.temp_mercado.minimo_dia IS 'Preço mínimo do dia';
COMMENT ON COLUMN paxpestg.temp_mercado.maximo_dia IS 'Preço máximo do dia';
COMMENT ON COLUMN paxpestg.temp_mercado.minimo_52_semanas IS 'Preço mínimo dos últimos 52 semanas';
COMMENT ON COLUMN paxpestg.temp_mercado.maximo_52_semanas IS 'Preço máximo dos últimos 52 semanas';
COMMENT ON COLUMN paxpestg.temp_mercado.volume IS 'Volume de negociações';
COMMENT ON COLUMN paxpestg.temp_mercado.volume_medio IS 'Volume médio de negociações';
COMMENT ON COLUMN paxpestg.temp_mercado.beta IS 'Beta da ação';
COMMENT ON COLUMN paxpestg.temp_mercado.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_mercado.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'temp_dividendos' no esquema 'paxpestg'
CREATE TABLE paxpestg.temp_dividendos (
    ticker VARCHAR(20) NOT NULL, 
    taxa_dividendo DOUBLE PRECISION, 
    data_exdividendo VARCHAR(20), 
    indice_distribuicao DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_dividendos.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_dividendos.taxa_dividendo IS 'Taxa de dividendo';
COMMENT ON COLUMN paxpestg.temp_dividendos.data_exdividendo IS 'Data ex-dividendo';
COMMENT ON COLUMN paxpestg.temp_dividendos.indice_distribuicao IS 'Índice de distribuição';
COMMENT ON COLUMN paxpestg.temp_dividendos.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_dividendos.dthr_igtao IS 'Data e hora da criação do registro';

-- Script para criar a tabela 'temp_valuation' no esquema 'paxpestg'
CREATE TABLE paxpestg.temp_valuation (
    ticker VARCHAR(20) NOT NULL, 
    pl_futuro DOUBLE PRECISION, 
    pl_retroativo DOUBLE PRECISION, 
    preco_booking DOUBLE PRECISION, 
    indice_preco_lucro_cresc DOUBLE PRECISION, 
    dt_ptcao VARCHAR(20) NOT NULL, 
    dthr_igtao TIMESTAMP NOT NULL
);

-- Comentários em português
COMMENT ON COLUMN paxpestg.temp_valuation.ticker IS 'Símbolo da ação';
COMMENT ON COLUMN paxpestg.temp_valuation.pl_futuro IS 'P/E Forward';
COMMENT ON COLUMN paxpestg.temp_valuation.pl_retroativo IS 'P/E Trailing';
COMMENT ON COLUMN paxpestg.temp_valuation.preco_booking IS 'Preço de booking';
COMMENT ON COLUMN paxpestg.temp_valuation.indice_preco_lucro_cresc IS 'Peg Ratio';
COMMENT ON COLUMN paxpestg.temp_valuation.dt_ptcao IS 'Data no formato ''dd/mm/aaaa''';
COMMENT ON COLUMN paxpestg.temp_valuation.dthr_igtao IS 'Data e hora da criação do registro';




-- Adicionar restrição de unicidade para a tabela 'cadastro'
ALTER TABLE paxpe.cadastro
ADD CONSTRAINT unique_ticker UNIQUE (ticker);

-- Adicionar restrição de unicidade para a tabela 'financas'
ALTER TABLE paxpe.financas
ADD CONSTRAINT unique_ticker_financas UNIQUE (ticker);

-- Adicionar restrição de unicidade para a tabela 'mercado'
ALTER TABLE paxpe.mercado
ADD CONSTRAINT unique_ticker_mercado UNIQUE (ticker);

-- Adicionar restrição de unicidade para a tabela 'dividendos'
ALTER TABLE IF EXISTS paxpe.dividendos
ADD CONSTRAINT unique_ticker_dividendos UNIQUE (ticker,data_exdividendo);

-- Adicionar restrição de unicidade para a tabela 'valuation'
ALTER TABLE paxpe.valuation
ADD CONSTRAINT unique_ticker_valuation UNIQUE (ticker);

-- ticker e data para o retorno mensal  
ALTER TABLE IF EXISTS paxpe.retorno_mensal
    ADD CONSTRAINT unique_ticker_data UNIQUE (ticker, data);

-- ticker constraint 
ALTER TABLE paxpe.captacao_mercado
ADD CONSTRAINT unique_ticker_cap_mercado UNIQUE (ticker);
