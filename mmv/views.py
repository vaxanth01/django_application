from .forms import ContactForm
from django.shortcuts import render
from django.shortcuts import render, redirect

def index(request):
    return render(request, "index.html")

def about(request):
    return render(request, "about.html")

def resume(request):
    return render(request, "resume.html")

def portfolio_details(request):
    return render(request, "portfolio_details.html")

def services(request):
    return render(request, "services.html")

def portfolio(request):
    return render(request, "portfolio.html")



def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('contact')
    else:
        form = ContactForm()
    return render(request, 'contact.html', {'form': form})