#set document(title: "Ian Caisse - Resume", author: "Ian Caisse")
#set page(margin: (x: 0.5in, y: 0.5in))
#set text(font: "New Computer Modern", size: 10pt)
#show link: set text(fill: rgb("#0055CC"))
#show link: underline
// --- FORMATTING FUNCTIONS ---

#let section-header(title) = block(width: 100%, below: 1em)[
  #set text(size: 14pt, weight: "bold")
  #title
  #v(-0.6em)
  #line(length: 100%, stroke: 0.5pt)
]

#let job-entry(company, title, dates, body) = block(width: 100%, below: 1.2em, breakable: false)[
  #strong(company) #h(1fr) #strong(dates) \
  #emph(title) \
  #set text(size: 9.5pt)
  #body
]

#let project-entry(title, dates, body) = block(width: 100%, below: 1.2em)[
  #strong(title) #h(1fr) #strong(dates) \
  #set text(size: 9.5pt)
  #body
]

// --- RESUME HEADER ---

#align(center)[
  #text(size: 24pt, weight: "bold")[IAN CAISSE] \
  #v(0.2em)
  #text(size: 12pt)[*Senior System Engineer*] \
  #v(0.2em)
  #link("mailto:Ian.P.Caisse@gmail.com")[Ian.P.Caisse\@gmail.com] | #link("https://www.linkedin.com/in/icaisse/")[linkedin.com/in/icaisse] | Mobile: Available on Request
]
#v(1em)

// --- Summary ---

#section-header("Summary")
Senior Systems Engineer with over 10 years of experience specializing in Azure Cloud Architecture, Hybrid Infrastructure, and Automation. Proven track record in engineering enterprise-grade Landing Zones, migrating legacy VMware environments to modern HCI (VxRail), and implementing robust CI/CD pipelines using Bicep and Ansible. Expert in identity management (Entra ID/PIM) and infrastructure hardening, with a focus on scalability, security, and eliminating configuration drift through Infrastructure as Code.

// --- CORE COMPETENCIES ---

#section-header("Core Competencies")
- *Cloud & Identity:* Azure, Entra ID, Active Directory
- *Virtualization & HCI:* VMware (vSphere, ESXi, vSAN, vRops), VxRail, Windows Server, Hyper-V, Storage Spaces Direct (S2D)
- *Infrastructure as Code & Automation:* Bicep, Ansible, PowerShell, Bash, Git, Azure DevOps, Terraform
- *Container Orchestration:* Kubernetes, Docker Swarm
- *Linux administration:* Redhat, Ubuntu, Arch
#v(1em)

// --- PROFESSIONAL EXPERIENCE ---
#section-header("Professional Experience")

#job-entry(
  "Public Company Accounting and Oversight Board",
  "Senior Systems Engineer",
  "September 2022 - April 2026",
)[
  - Engineered comprehensive Azure cloud solutions, implementing the Microsoft Cloud Adoption Framework, Azure Policy, B2C, and CI/CD pipelines via Azure DevOps and Bicep templating.
  - Architected enterprise Azure Landing Zones (ALZ) and scalable identity architectures, integrating custom Role-Based Access Control (RBAC) to enforce least-privilege access across distributed cloud environments.
  - Strengthened identity and security posture through EntraID administration, Azure Privileged Identity Management (PIM) persona modeling, MS Graph, Conditional Access, and automated Gold Image hardening.
  - Architected the modernization and migration of legacy VMware platforms to a hyper-converged VxRail environment.
  - Serving as the subject matter expert for Ansible and Red Hat Satellite, directed automated deployments, managed comprehensive VMware and Linux patching lifecycles, and developed custom PowerShell, Bash, and azcli tools to eliminate configuration drift.
]

#job-entry(
  "TekSynap, USNRC",
  "System Security Engineer, Splunk",
  "May 2022 - September 2022",
)[
  - System engineer administering Splunk, Nessus, Varonis, and Cribl. Provided log support and analysis, as well as managed log streaming infrastructure to meet TIC 3.0 cybersecurity requirements.
  - Assisted with endpoint security management, vulnerability remediation, and cleanup of PII spills.
]

#job-entry(
  "TekSynap, USNRC",
  "VMware/VDI Administrator",
  "March 2020 - May 2022",
)[
  - System Engineer maintaining VMware VxRail, Citrix, and Dell VRTX Blade Servers.
  - Managed and migrated VMware VxRail, Citrix, and Dell VRTX environments. Administered VM provisioning and VROPS cluster monitoring.
  - Monitored infrastructure alerts using Splunk.
  - Deployed and supported Azure Virtual Desktop.
]

#job-entry(
  "Apex Systems, USNRC",
  "System Analyst",
  "October 2019 - March 2020",
)[
  - Technical support for roughly 4,500 users of Windows, iOS and Android systems and related software, including but not limited to: Citrix VPN, Citrix Workspace, Microsoft Office, and Active Directory.
  - Managed ticket queue and supported management via weekly KPI reports.
]

#job-entry(
  "Consulting",
  "Independent IT Consultant",
  "September 2014 - April 2020",
)[
  - Built, deployed, and maintained laptops, workstations, servers, and network appliances for a variety of customers, focused on professionals, SOHO deployments, and typical end users.
  - For critical deployments, configured monitoring and alerting with RMM software to receive alerts regarding endpoint health and new CVEs.
]

#job-entry(
  "Amazon Web Services",
  "Datacenter Technician",
  "May 2019 - October 2019",
)[
  - Datacenter Technician maintaining, racking, cabling, and provisioning Intel and AMD based servers.
  - Performed hardware troubleshooting and issue resolution via ticketing systems, providing detailed logs for system alerts and escalations.
  - Collaborated with various teams to mitigate issues across multiple locations.
]

// --- EDUCATION ---
#section-header("Education")

#project-entry(
  "Self-Study - Storage, Virtualization, Container Orchestration",
  "2013 - Present",
)[
  - Architect and maintain a personal homelab serving as an enterprise-grade test bed.
  - Infrastructure centers on a high-availability 2-node Windows Server hypervisor cluster utilizing Storage Spaces Direct (S2D) to simulate, test, and troubleshoot advanced storage and virtualization configurations.
]

#project-entry(
  "Montgomery College - Computer Science",
  "2015 - 2017",
)[
  - Course work focused on C++ programming and IT Support.
]

// --- ONGOING PROJECTS ---
#section-header("Ongoing Projects")

#project-entry(
  "Home Lab Environment",
  "2013 - Present",
)[
  - Two node hyperconverged cluster running Windows Server 2025 Datacenter.
  - AActive Directory domain for authentication and identity management, with some services integrated via Entra ID.
  - Running production workloads in a hybrid physical/virtual Kubernetes (K3s) cluster with Embedded ETCD.
  - Core services include Rancher, Nginx, Cloudflare, KubeVIP, NetData, Grafana, and Loki.
  - New machines are deployed via CI/CD from GitHub and managed via Ansible.
  - Backups are managed via dedicated hardware appliance.
]