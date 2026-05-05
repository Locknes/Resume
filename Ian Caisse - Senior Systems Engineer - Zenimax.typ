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
  #text(size: 12pt)[*Senior Systems Engineer*] \
  #v(0.2em)
  #link("mailto:Ian.P.Caisse@gmail.com")[Ian.P.Caisse\@gmail.com] |
  #link("https://www.linkedin.com/in/icaisse/")[linkedin.com/in/icaisse] | Mobile: Available on Request
]
#v(1em)

// --- Summary ---

#section-header("Summary")
Senior Systems Engineer with over 10 years of experience specializing in VMware Virtualization, Datacenter Operations, and Automation. Proven track record in managing high-performance multi-site environments, executing complex hardware lifecycles, and implementing robust CI/CD pipelines using Ansible and PowerShell. Expert in infrastructure automation, identity management, and emerging technologies including on-premises Kubernetes and VMware Aria Operations & Automation, with a focus on mentoring teams and independently resolving complex, Tier 3 infrastructure issues.

// --- CORE COMPETENCIES ---

#section-header("Core Competencies")
- *Virtualization & Datacenter:* VMware Cloud Foundation (VCF), VMware Aria Operations & Automation, VxRail, vSphere, ESXi, Dell & Supermicro Hardware Lifecycle, Rack/Stack Cabling
- *Infrastructure as Code & Automation:* Ansible, PowerShell, Python, Git, Azure DevOps
- *Container Orchestration:* Kubernetes (K3s, on-premises deployments), VMWare Tanzu
- *Cloud & Identity:* Active Directory, Entra ID, SSO Platforms, Azure
- *OS Administration:* Windows Server, Red Hat, Ubuntu, Arch Linux
#v(1em)

// --- PROFESSIONAL EXPERIENCE ---
#section-header("Professional Experience")

#job-entry(
  "Public Company Accounting and Oversight Board",
  "Senior Systems Engineer",
  "September 2022 - April 2026",
)[
  - Engineered and maintained software-defined datacenter (SDDC) infrastructure using VMware Cloud Foundation (VCF) to deliver highly available and scalable compute, storage, and networking.
  - Drove the consolidation and migration of legacy virtualized platforms into a modern VCF architecture on hyper-converged VxRail, optimizing cluster resource utilization and eliminating configuration drift. 
  - Leveraged VMware Aria Operations to monitor overall infrastructure health, tracking critical uptime KPIs and proactively identifying underlying hardware degradation to prevent service disruptions.
  - Maintained fleet configuration compliance by building reporting dashboards in Aria Operations to audit guest OS versions and ensure uniform deployment of VMware Tools across all virtual endpoints.
  - Serving as the subject matter expert and mentor for Ansible and Red Hat Satellite, directed automated deployments, managed comprehensive VMware and Linux patching lifecycles, and developed custom PowerShell and Bash tools to eliminate configuration drift.
  - Architected scalable identity architectures, integrating custom Role-Based Access Control (RBAC) and Active Directory/Entra ID to enforce least-privilege access across distributed environments.
  - Managed robust CI/CD pipelines via Azure DevOps, implementing Infrastructure as Code to streamline operations and ensure consistent patching and compliance across all hardware.
  - Independently owned escalated issues through full resolution, operating at a Tier 3 level and mentoring junior engineers on best practices and emerging technologies.
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
  - System Engineer maintaining VMware VxRail, Citrix, and Dell VRTX Blade Servers across production deployments.
  - Managed and migrated VMware environments, executing complex firmware updates and hardware lifecycles on Dell hardware.
  - Streamlined the virtual machine lifecycle by utilizing VMware Aria Automation to standardize and accelerate the provisioning of new VM deployments across the enterprise cluster.
  - Leveraged VMware Aria Operations to monitor overall infrastructure health, tracking critical uptime KPIs and proactively identifying underlying hardware degradation to prevent service disruptions.
  - Maintained fleet configuration compliance by building reporting dashboards in Aria Operations to audit guest OS versions and ensure uniform deployment of VMware Tools across all virtual endpoints.
  - Monitored infrastructure alerts using Splunk and drove process optimization and asset management.
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
  - Datacenter Technician maintaining, racking, cabling, and provisioning Intel and AMD based servers across high-performance, multi-site datacenter environments.
  - Performed physical hardware installation, structured cabling, and hardware troubleshooting, maintaining optimal cooling and power configurations.
  - Executed complex hardware lifecycle tasks and firmware patching, providing detailed logs for system alerts and escalations.
  - Collaborated with various teams to mitigate issues across multiple locations, acting as an escalation point for hardware failures.
]

// --- EDUCATION ---
#section-header("Education")

#project-entry(
  "Self-Study - Storage, Virtualization, Container Orchestration",
  "2013 - Present",
)[
  - Architect and maintain a personal homelab serving as an enterprise-grade test bed for VMware, Kubernetes, and storage technologies.
  - Infrastructure centers on a high-availability hypervisor cluster utilizing advanced storage configurations to simulate, test, and troubleshoot production-like environments.
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
  - Two node hyperconverged cluster running Windows Server 2025 Datacenter, leveraging Storage Spaces Direct (S2D) for highly available shared storage.
  - Active Directory domain for authentication and identity management, with some services integrated via Entra ID/SSO.
  - Running production workloads in a hybrid physical/virtual Kubernetes (K3s) cluster with Embedded ETCD and GPU virtualization, mirroring early-stage on-premises Kubernetes adoption.
  - Core services include Rancher, Nginx, Cloudflare, KubeVIP, NetData, Grafana, and Loki.
  - New machines are deployed via CI/CD from GitHub and configured via Ansible automation workflows.
  - Backups are managed via dedicated hardware appliance.
  - Driving a modernization effort to build a new IaC Kubernetes cluster, leveraging Packer and Terraform to build on CIS L1 hardened RHEL, alongside evaluating a transition to dual-stack IPv6 networking.
]