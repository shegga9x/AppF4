BEGIN;

    INSERT INTO roles (name) VALUES ('admin'), ('user'), ('moderator')
    ON DUPLICATE KEY UPDATE name = name;
    
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('nathan.burton@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('samson.olaisen@example.com', NULL, 'github', 'github_124448', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('miodrag.vasic@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('faustine.marchand@example.com', NULL, 'facebook', 'facebook_348071', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('gul.dalkiran@example.com', NULL, 'facebook', 'facebook_837401', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('alma.candelaria@example.com', NULL, 'google', 'google_796711', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('lucie.renard@example.com', NULL, 'google', 'google_391995', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('stephanie.lucas@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ken.graham@example.com', NULL, 'google', 'google_810559', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('victoria.kowalski@example.com', NULL, 'facebook', 'facebook_608469', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('mia.perez@example.com', NULL, 'facebook', 'facebook_712413', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('malathy.ramesh@example.com', NULL, 'google', 'google_794079', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('rh.shylyrd@example.com', NULL, 'facebook', 'facebook_773576', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('roland.gardner@example.com', NULL, 'google', 'google_886375', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('murat.eksioglu@example.com', NULL, 'facebook', 'facebook_737758', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('volkan.toraman@example.com', NULL, 'facebook', 'facebook_661020', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('christian.alvarez@example.com', NULL, 'facebook', 'facebook_227661', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('frederique.abels@example.com', NULL, 'github', 'github_807572', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('maria.edwards@example.com', NULL, 'github', 'github_943278', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('joel.kari@example.com', NULL, 'github', 'github_760273', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('emmie.schmitt@example.com', NULL, 'google', 'google_122897', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ard.hydry@example.com', NULL, 'github', 'github_219515', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('axelle.philippe@example.com', NULL, 'github', 'github_397679', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('raquel.rios@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('isaltino.pires@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('bhrh.khrymy@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('agafonika.yarmolyuk@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('mhrs.mwswy@example.com', NULL, 'google', 'google_380789', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('daniel.andersen@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('glikeriya.antonenko@example.com', NULL, 'facebook', 'facebook_696470', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('vanessa.williams@example.com', NULL, 'github', 'github_889754', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('aurelien.michel@example.com', NULL, 'facebook', 'facebook_950489', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('muna.sijtsema@example.com', NULL, 'google', 'google_483846', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('prmys.glshn@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('eva.white@example.com', NULL, 'github', 'github_150299', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('abdullahi.skogen@example.com', NULL, 'facebook', 'facebook_697530', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('carolina.serrano@example.com', NULL, 'facebook', 'facebook_352013', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('gilbert.burke@example.com', NULL, 'facebook', 'facebook_272076', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('rene.vandenijssel@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('radojko.danilovic@example.com', NULL, 'facebook', 'facebook_233905', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('jose.richardson@example.com', NULL, 'google', 'google_253594', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ayse.tazegul@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('virgil.ray@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('albert.thomsen@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('hashim.vanbeeck@example.com', NULL, 'facebook', 'facebook_555550', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('isaias.fernandes@example.com', NULL, 'facebook', 'facebook_198196', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ailo.haarr@example.com', NULL, 'facebook', 'facebook_806940', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('marie.perez@example.com', NULL, 'google', 'google_545483', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('daniel.dejesus@example.com', NULL, 'google', 'google_883814', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('jorg-peter.pecher@example.com', NULL, 'google', 'google_731699', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ines.freyer@example.com', NULL, 'github', 'github_258730', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('pamela.guevara@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('saloni.shah@example.com', NULL, 'github', 'github_484567', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('octavio.velasquez@example.com', NULL, 'facebook', 'facebook_173520', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('armyt.kmyrn@example.com', NULL, 'github', 'github_168157', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('isaac.melgar@example.com', NULL, 'google', 'google_343597', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('andrea.morel@example.com', NULL, 'facebook', 'facebook_643946', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('svitlana.kashchuk@example.com', NULL, 'facebook', 'facebook_707794', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ceylan.dizdar@example.com', NULL, 'facebook', 'facebook_677072', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('heidrun.rettig@example.com', NULL, 'facebook', 'facebook_547239', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ben.edwards@example.com', NULL, 'github', 'github_201289', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('debbie.hughes@example.com', NULL, 'google', 'google_467033', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('jamie.brooks@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ella.ma@example.com', NULL, 'facebook', 'facebook_198347', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('olimpia.melo@example.com', NULL, 'google', 'google_922555', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ludmilla.kiesel@example.com', NULL, 'github', 'github_290551', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('aymeric.philippe@example.com', NULL, 'google', 'google_509469', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('silje.moller@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('scarlett.harris@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('vilma.oja@example.com', NULL, 'google', 'google_543181', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('frederikke.nielsen@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('charlene.nguyen@example.com', NULL, 'google', 'google_892654', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('aubrey.gagne@example.com', NULL, 'google', 'google_238371', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('adolfo.benitez@example.com', NULL, 'google', 'google_338835', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('sophie.holmes@example.com', NULL, 'github', 'github_205471', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('sofia.campbell@example.com', NULL, 'google', 'google_720250', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('juanmanuel.burgos@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('bilal.linge@example.com', NULL, 'github', 'github_114349', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('claudia.guzman@example.com', NULL, 'github', 'github_244295', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('elizabeth.stephens@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('zeloi.damata@example.com', NULL, 'facebook', 'facebook_392692', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('clifton.stanley@example.com', NULL, 'github', 'github_574891', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ruzica.dokic@example.com', NULL, 'facebook', 'facebook_590896', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('silvano.calvillo@example.com', NULL, 'github', 'github_614170', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('wilhelmus.moeskops@example.com', NULL, 'google', 'google_267299', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('blanca.santiago@example.com', NULL, 'github', 'github_710966', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('elissa.heusinkveld@example.com', NULL, 'facebook', 'facebook_582474', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ivan.arce@example.com', NULL, 'facebook', 'facebook_332605', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('sara.payne@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('juan.guerrero@example.com', NULL, 'facebook', 'facebook_585043', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ilias.kee@example.com', NULL, 'facebook', 'facebook_106370', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('vicente.pedroza@example.com', NULL, 'github', 'github_481226', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('jayden.roberts@example.com', NULL, 'google', 'google_900324', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('juana.serrano@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('pedro.santana@example.com', NULL, 'github', 'github_847797', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('nedan.gomenyuk@example.com', NULL, 'github', 'github_590862', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('ibrahim.overland@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('umut.dogan@example.com', NULL, 'github', 'github_606931', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('emma.chu@example.com', NULL, 'facebook', 'facebook_517582', TRUE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        
        INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified)
        VALUES ('gerry.cunningham@example.com', NULL, 'local', NULL, FALSE);
        
        INSERT INTO user_roles (user_id, role_id)
        VALUES (LAST_INSERT_ID(), (SELECT id FROM roles WHERE name = 'user' LIMIT 1));
        COMMIT;
