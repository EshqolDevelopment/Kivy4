python3 update_version.py
rm -rf build dist Kivy4.egg-info

python3 setup.py install
pip3 install twine

read -p "Enter username: " user
read -p "Enter password: " pass

twine upload --repository pypi dist/* -u "$user" -p "$pass"

rm -rf build dist Kivy4.egg-info
