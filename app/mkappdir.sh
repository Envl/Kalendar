mkdir components
mkdir config
mkdir screens
mkdir lib

cd config 
touch ROUTES.js
echo "const ROUTES = {}" > ROUTES.js
echo "export default ROUTES" >> ROUTES.js
touch index.js
echo "import ROUTES from './ROUTES'" > index.js
echo "export {ROUTES}" >> index.js

