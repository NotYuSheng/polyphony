# Polyphony

A composite microservices suite designed for Agile delivery and DevOps orchestration, with Docker Compose and Helm readiness. 

## Directory Structure

The project structure is as follows:  

```shell
.  
polyphony/
├── services/                      # All microservices
│   ├── auth/                      # Auth service (FastAPI)
│   ├── converter/                 # Converter service
│   └── ...                        # Future services
│
├── frontend/                      # Unified UI (e.g., React or Streamlit)
│   └── dashboard/                 # Dashboard or web interface
│
├── infrastructure/               # Infrastructure-level services
│   ├── nginx/                    # Reverse proxy
│   ├── kafka/                    # Kafka broker + zookeeper
│   ├── postgres/                 # Database + init scripts
│   └── ...                       # Any additional infra (e.g., redis)
│
├── shared/                       # Shared code or base packages
│   ├── utils/                    # Shared Python utilities
│   ├── models/                   # Shared data models/schemas
│   └── ...                      
│
├── deploy/                       # Docker Compose & K8s deployment files
│   ├── docker-compose.yml        # Top-level orchestrator
│   ├── .env                      # Global environment variables
│   └── k8s/                      # Optional: Kubernetes manifests
│
├── docs/                         # System diagrams, architecture, README
├── scripts/                      # Shell scripts for dev tools, CI
├── Makefile                      # Optional task runner
└── README.md
```

---

## License

This project is licensed under the MIT License. See the LICENSE file for details.