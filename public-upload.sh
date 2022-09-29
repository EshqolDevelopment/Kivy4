python3 update_version.py

pip3 install setuptools wheel
python3 setup.py sdist bdist_wheel

pip3 install twine

read -p "Enter username: " user
read -p "Enter password: " pass

twine upload --repository pypi dist/* -u "${user}" -p "${pass}"

rm -rf build dist Kivy4.egg-info
