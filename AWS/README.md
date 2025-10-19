AWS has a bunch of global services, hese services aren't tied to any one region and are available worldwide. Some examples are, for example, IAM, which is Identity and Access Management Service. This is where you control who has access to AWS resources. Then you have Route 53, a managed DNS service that helps you route users to your applications. CloudFront, another one which is also a CDN to help you get your content to users faster. Then you have WAF, another global service.


            IAM Identity and Access Management

                Why we use IAM

We use AWS Identity and Access Management (IAM) to securely control who can access AWS resources. It protects our cloud environment by managing users, roles, and permissions.

                What we use it for

Create and manage users and roles

Control access to AWS services and resources

Set policies that define what actions are allowed or denied

Enable MFA and temporary credentials for safer authentication

                How it helps us

Improves security by giving only the needed permissions (least privilege)

Centralizes control over all users and resources

Prevents unauthorized access or accidental changes

Supports compliance by keeping access auditable and well-managed




                Why we use AWS CLI

We use the AWS Command Line Interface (CLI) to manage AWS services quickly and efficiently using commands instead of the web console.

                What we use it for

Create and manage AWS resources (like EC2, S3, IAM, etc.)

Automate tasks with scripts

Access AWS services directly from the terminal

                How it helps us

Saves time by automating repetitive tasks

Improves consistency through scripts and version control

Enables remote management of AWS resources without a browser



                Why we use AWS SDK

We use the AWS Software Development Kit (SDK) to let our applications interact with AWS services directly through code.

                What we use it for

Integrate AWS services (like S3, DynamoDB, or EC2) into apps

Automate AWS operations using programming languages (Python, Java, etc.)

Build cloud-based applications that use AWS resources

                How it helps us

Simplifies development with pre-built functions and libraries

Saves time — no need to write low-level API calls

Makes apps scalable and cloud-ready

                        IAM Roles for Services

Why we use it:
IAM Roles for services let AWS services access other AWS resources securely — without needing long-term access keys.

                    What it does:
A service (like EC2, Lambda, or ECS) “assumes” a role to perform actions on your behalf.
For example:

An EC2 instance can use a role to read files from S3.

A Lambda function can use a role to write logs to CloudWatch.

                How it helps:

Improves security by removing the need for hard-coded credentials.

Ensures temporary, limited access (least privilege).

Makes automation and scaling safer and easier.

                IAM Security Tools

Why we use it:
IAM includes built-in tools to monitor, test, and secure permissions in your AWS environment.

                What it includes:

IAM Access Analyzer – finds resources shared outside your account.

IAM Credential Report – lists all users and their credentials’ security status.

IAM Policy Simulator – tests and verifies what permissions a policy allows.

Service Last Accessed Report – shows when a role or user last used a service.

                How it helps:

Detects unused or risky permissions.

Prevents over-privileged access.

Keeps your AWS environment compliant and secure.



ALB = Layer 7 (HTTP/S, gRPC) → smart routing and web features.

NLB = Layer 4 (TCP/UDP/TLS) → extreme performance, static IPs, and non-HTTP protocols.

When to pick each
Pick ALB when you need:

HTTP-aware routing: host/path routing, header/query rules, weighted rules, canary/blue-green.

gRPC / HTTP/2 / WebSockets support.

App features: OAuth/OIDC/Cognito auth at the edge, AWS WAF integration, request/response headers, redirects, fixed responses.

Cookie stickiness (per target group).

Lambda targets (serve HTTP without servers).

Detailed HTTP health checks (status codes, paths).

Typical ALB use cases

Public websites & APIs with microservices (e.g., /api, /img, admin.example.com).

gRPC services between frontends/backends.

Apps needing user auth offloaded at the load balancer.

WebSockets dashboards/chats.

Pick NLB when you need:

Ultra-low latency & very high throughput (millions of req/s) with minimal L4 overhead.

Non-HTTP protocols: TCP/UDP (e.g., SMTP, MQTT, DNS over UDP/TCP, Syslog, game servers, FIX).

Static IPs / Elastic IPs per AZ (for allowlists, partner firewalls, compliance).

Source IP preservation at L4 (no X-Forwarded-For parsing needed).

TLS passthrough or TLS termination without L7 features; supports mTLS on targets when you passthrough.

PrivateLink provider (VPC Endpoint Service requires NLB).

L4 stickiness (source-IP based) when needed.

TCP/UDP/HTTPS health checks.

Typical NLB use cases

Financial trading (FIX), IoT/MQTT, game backends, SMTP/IMAP, custom TCP/UDP services.

Services that must expose static IPs/EIPs to customers or partners.

PrivateLink-exposed internal platforms.

mTLS where the backend must see the original client cert.

Quick decision guide

Need path/host routing, WAF, auth, Lambda targets, gRPC/WebSockets? → ALB

Need static IP/EIP, non-HTTP (TCP/UDP), L4 latency/throughput, PrivateLink, or strict source-IP preservation? → NLB

Have both (e.g., web + MQTT)? It’s common to run ALB for web and NLB for protocol/back-end side by side.



                Stateful Firewall

A stateful firewall keeps track of the state of every active connection — it understands the context of the traffic.

How it works:

When a packet comes in, the firewall checks if it belongs to an existing connection.

If it’s part of an already-allowed session (e.g., a response to an outbound request), it’s automatically allowed.

If it’s a new connection, the firewall evaluates its rules and (if allowed) remembers it in the state table.

Example:

You send a request from your app to a web server on port 443.

The response traffic from port 443 → your port 5678 is automatically allowed because it’s part of the same session.

Used for:

Most modern firewalls, including AWS Security Groups.

Good for web apps, APIs, and typical client-server traffic.

Easier management: only define one direction of the flow (return traffic handled automatically).


                Stateless Firewall

A stateless firewall does not track connection states — each packet is inspected individually in isolation.

How it works:

Every inbound and outbound packet must explicitly match a rule.

Return traffic is not automatically allowed — you must add separate rules for both directions.

Example:

If you allow outbound traffic to port 443, you must also explicitly allow inbound traffic for the response ports (e.g., ephemeral ports).

Used for:

High-performance or low-level network filtering.

AWS Network ACLs (NACLs) are stateless.

Useful when you need very granular control or handle non-session protocols (like UDP).


            In short:

Use stateful when you care about sessions and simplicity (typical for servers and apps).

Use stateless when you need speed and strict packet-level control (typical for edge or subnet-level filters).