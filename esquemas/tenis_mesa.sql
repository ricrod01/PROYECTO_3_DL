CREATE TABLE `Jugadores` (`id_jugador` DECIMAL(18,2), `nombre_jugador` VARCHAR(100), `id_nacionalidad` DECIMAL(18,2), `id_pala` DECIMAL(18,2), `id_hule_negro` DECIMAL(18,2), `id_hule_otro` DECIMAL(18,2));
CREATE TABLE `Paises` (`id_pais` DECIMAL(18,2), `pais` VARCHAR(100), `entrenador` DECIMAL(18,2));
CREATE TABLE `Palas` (`id_pala` DECIMAL(18,2), `nombre_pala` VARCHAR(100), `id_empresa` DECIMAL(18,2));
CREATE TABLE `Hules_negros` (`id_hule_negro` VARCHAR(100), `nombre_hule_negro` VARCHAR(100), `id_empresa` DECIMAL(18,2));
CREATE TABLE `Hules_otros` (`id_hule_otro` VARCHAR(100), `nombre_hule_otro` VARCHAR(100), `color` VARCHAR(100), `id_empresa` DECIMAL(18,2));
CREATE TABLE `Empresas` (`id_empresa` DECIMAL(18,2), `nombre_empresa` VARCHAR(100));