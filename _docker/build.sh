DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $DIR
curl https://nightly.odoo.com/odoo.key > "${DIR}/openerp/odoo.key"
docker build -t freegeektwincities/openerp-postgres:latest "${DIR}/postgres"
docker build -t freegeektwincities/openerp "${DIR}/openerp"
docker build -t freegeektwincities/portero -f "${DIR}/portero/Dockerfile" "${DIR}/.."