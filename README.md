# SA Investor — Learning & Building an Investment Strategy (From South Africa)

This repo is a *learning project* that grows from scratch into a small research app that designs and evaluates investment strategies focused on South Africa (JSE) plus global markets.

> **Disclaimer**: Educational use only. Not investment advice.

## Quickstart

```bash
# 1) Create environment
conda env create -f environment.yml
conda activate sa-investor

# 2) Create project folders
mkdir -p data/raw data/processed notebooks src/{data,features,strategies,backtest,portfolio,app} tests configs

# 3) Start Jupyter for exploration
jupyter lab

# 4) Run the demo data fetch (once you've created it)
# python -m src.data.ingest --symbols NPN.JO,AGL.JO --start 2015-01-01
```

## Suggested Layout

```
sa-investor/
  README.md
  environment.yml
  .gitignore
  data/
    raw/
    processed/
  notebooks/
  src/
    data/            # loaders & caches
    features/        # indicators & factors
    strategies/      # rules & ML models
    backtest/        # execution, costs, slippage
    portfolio/       # optimization & risk
    app/             # FastAPI backend (later)
  tests/
  configs/
```

## First Tasks

1. Fetch daily prices for a few JSE tickers (e.g., `NPN.JO`, `AGL.JO`) using `yfinance` and cache to `data/processed/` as Parquet.
2. Implement a simple momentum strategy and backtest with `backtesting.py`.
3. Add a basic mean–variance allocation with `PyPortfolioOpt`.
4. Wrap it behind a small FastAPI endpoint.
