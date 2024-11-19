# Terraform Launch PWD

Ce projet utilise Terraform pour lancer une instance sur AWS. Ce fichier README vous guidera à travers les étapes nécessaires pour configurer et exécuter le code.

## Prérequis

- [Terraform](https://www.terraform.io/downloads.html) installé sur votre machine.
- Un compte AWS avec les permissions nécessaires pour créer des ressources.
- [AWS CLI](https://aws.amazon.com/cli/) configuré avec vos identifiants.

## Configuration

1. **Clonez le dépôt :**

   ```bash
   git clone https://github.com/ulrich-sun/terraform-launch-pwd.git
   cd terraform-launch-pwd
   ```

2. **Modifiez le fichier `variables.tf` :**

   Vous pouvez personnaliser les variables dans ce fichier selon vos besoins, comme le type d'instance, la région, etc.

3. **Initialisez Terraform :**

   Exécutez la commande suivante pour initialiser Terraform et télécharger les plugins nécessaires :

   ```bash
   terraform init
   ```

4. **Planifiez votre infrastructure :**

   Utilisez la commande suivante pour voir les modifications qui seront apportées :

   ```bash
   terraform plan
   ```

5. **Appliquez les modifications :**

   Pour créer les ressources définies, exécutez :

   ```bash
   terraform apply
   ```

   Confirmez l'application en tapant `yes` lorsque cela vous est demandé.

## Gestion des ressources

Pour détruire les ressources créées, utilisez :

```bash
terraform destroy
```

Confirmez la destruction en tapant `yes`.

## Contributions

Les contributions sont les bienvenues ! Veuillez soumettre une demande de tirage (pull request) pour toute amélioration.

## Licence

Ce projet est sous licence MIT. Consultez le fichier LICENSE pour plus de détails.
