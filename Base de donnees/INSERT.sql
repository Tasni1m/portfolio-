USE tas;


INSERT INTO TAS_PERSONNE (TAS_NOM, TAS_PRENOM, TAS_EMAIL, TAS_TELEPHONE, TAS_DATE_NAISSANCE)
VALUES 
('Aabi', 'Tasnim', 'tasnim.aabiosman@hotmail.com', '079', '2000-06-09');


INSERT INTO TAS_ADMIN (TAS_ID_ADMIN)
VALUES (1);

INSERT INTO TAS_PROJET (TAS_NOM_PROJET, TAS_DESCRIPTION_PROJET)
VALUES 
('Création intégrale d''un site web pour l''association Education Solidarité', 
'Développement d''un système de paiement en ligne sécurisé avec l''API Stripe. Intégration de PHPMailer pour l''envoi automatisé de newsletters et la gestion des formulaires de contact. Gestion des fonctionnalités de connexion, d''inscription, et d''un espace administrateur permettant une gestion avancée du site. Création et mise en ligne d''un site web responsive, répondant aux besoins de l''association.');


INSERT INTO TAS_MESSAGE (TAS_ID_PERSO_MESSAGE, TAS_CONTENU_MESSAGE, TAS_DATE_MESSAGE)
VALUES 
(1, 'Bonjour, j''aime beaucoup votre site et le travail que vous faites!', '2024-11-05');
