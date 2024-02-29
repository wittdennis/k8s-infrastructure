# Setup the Kubernetes Cluster

1. Install the ansible requirements with:
    ```sh
    ansible-galaxy install -r requirements.yml
    ```

2. Create a ansible vault password file containing the ansible vault password used in the `vars.yaml` file.

3. **Only when site was freshly created**: Run `00-prepare-site.yml`
    ```sh
    ansible-playbook -i inventories/production 00-prepare-site.yml
    ```

4. Export Hetzner hcloud project token
    ```sh
    export HCLOUD_TOKEN=<your-token>
    ```

5. Setup Kubernetes Cluster
    ```sh
    ansible-playbook -i inventories/production 10-kubernetes-cluster.yml --vault-pass-file <your-vault-pass-file> -K
    ```
