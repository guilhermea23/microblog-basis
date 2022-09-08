from flask import render_template, flash, redirect, url_for

from app import app
from app.forms import LoginForm

@app.route('/')
@app.route('/index')
def index():
  user ={'username':'Guilherme'}
  posts = [{
    'author': user,
    'body': 'Hello World'
  }, {
    'author': {'username':'Basis'},
    'body': 'Hello World da Basis'
  } ]
  return render_template('index.html', title='Home', user=user, posts=posts)

@app.route('/login', methods=['GET','POST'])
def login():
  form = LoginForm()
  if form.validate_on_submit():
    flash(f'Login efetuado com sucesso para {form.username.data}, Remember-me: {form.remember_me.data}')
    return redirect(url_for('index'))
  return render_template('login.html', form=form, title='Login')
