-- SPDX-FileCopyrightText: 2023 Davidson <twister@davidson.fr>
-- SPDX-License-Identifier: GPL-3.0-or-later

CREATE INDEX index_zas ON mesures_originales (code_zas, zas);
CREATE INDEX index_polluant ON mesures_originales (polluant);
CREATE INDEX index_valeur ON mesures_originales (valeur);
CREATE INDEX index_validite ON mesures_originales(validite);

CREATE INDEX index_zas_and_poluant ON mesures_originales(code_zas, zas, polluant);
