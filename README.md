# Polyphony

A composite microservices suite designed for Agile delivery and DevOps orchestration, with Docker Compose and Helm readiness. 

## Directory Structure

The project structure is as follows:  

```shell
.  
polyphony/
├── services/                         # All backend microservices
│   ├── auth/                         # Auth service (FastAPI)
│   ├── converter/                    # Converter service
│   └── ...                           # Future services
│
├── frontend/                         # Unified UI (e.g., React or Streamlit)
│   └── dashboard/                    # Dashboard or web interface
│
├── infrastructure/                  # Core infrastructure components
│   ├── nginx/                       # Nginx reverse proxy config
│   ├── kafka/                       # Kafka broker and Zookeeper
│   └── ...                          # Other infra (e.g., Redis, MinIO)
│
├── shared/                          # Shared libraries and code
│   ├── utils/                       # Common utility functions
│   ├── models/                      # Shared Pydantic or SQLAlchemy models
│   └── ...                          # Additional shared components
│
├── deploy/                          # Deployment configurations
│   ├── docker-compose.yml           # Main orchestrator for local dev
│   ├── docker-compose.override.yml  # Overrides for development (volumes, ports)
│   ├── .env                         # Global environment variables
│   └── helm/                        # Helm charts for Kubernetes/OpenShift
│
├── docs/                            # Documentation and architecture
│   ├── diagrams/                    # System and C4 diagrams
│   └── ...                          # Design decisions, ADRs, etc.
│
├── scripts/                         # Utility scripts (e.g., setup, test)
├── Makefile                         # Common developer tasks and automation
└── README.md                        # Project overview and usage
```

---

## License

This project is licensed under the MIT License. See the LICENSE file for details.
