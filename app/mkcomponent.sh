
echo "which folder do you want to put it in?"
echo "1. components | 2. screens"
read choice
if [ "$choice" -eq 1 ]; then 
    cd components/
elif [ "$choice" -eq 2 ]; then 
    cd screens/
else 
    echo "bad choice"
    return 1
fi
echo "enter the name of the component/screen"
read name 
mkdir $name
cd $name
touch $name.js
echo "import React from 'react'" > $name.js
echo "import { Text, View } from 'react-native'" >> $name.js
echo "import styles from './style'" >> $name.js
echo "\n" >> $name.js
echo "export default $name" >> $name.js
touch index.js
echo "import $name from './$name'" > index.js
echo "export default $name" >> index.js
touch style.js
echo "import { StyleSheet } from 'react-native'" > style.js
echo "const styles = StyleSheet.create({})" >> style.js
echo "export default styles" >> style.js

echo "done!"

