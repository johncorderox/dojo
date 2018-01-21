from django.shortcuts import render, redirect

# Create your views here.
def index(request):
    if not 'total' in request.session:
        request.session['total'] = 0
        return render(request, 'amadon/index.html')
    if not 'quantity' in request.session:
        request.session['quantity'] = 0
        return render(request, 'amadon/index.html')
    if not 'quantity_total' in request.session:
        request.session['quantity_total'] = 0
        return render(request, 'amadon/index.html')
    if not 'total_total' in request.session:
        request.session['total_total'] = 0
        return render(request, 'amadon/index.html')
    return render(request, 'amadon/index.html')
def buy(request):
        request.session['product_id'] = request.POST['product_id']

        quantity = request.session['quantity']
        product_id = request.session['product_id']
        total = request.session['total']

        if product_id == '1015':
            sweater = 19.99
            request.session['total'] = sweater * float(quantity)
            request.session['quantity_total'] += float(quantity)
            request.session['total_total'] += request.session['total']
            return redirect('amadon/checkout')

        if product_id == '1016':
            sweater = 29.99
            request.session['total'] = sweater * float(quantity)
            request.session['quantity_total'] += float(quantity)
            request.session['total_total'] += request.session['total']
            return redirect('amadon/checkout')

        if product_id == '1017':
            sweater = 4.99
            request.session['total'] = sweater * float(quantity)
            request.session['quantity_total'] += float(quantity)
            request.session['total_total'] += request.session['total']
            return redirect('amadon/checkout')

        if product_id == '1018':
            sweater = 49.99
            request.session['total'] = sweater * float(quantity)
            request.session['quantity_total'] += float(quantity)
            request.session['total_total'] += request.session['total']
            return redirect('amadon/checkout')

def checkout(request):
    return render(request, 'amadon/checkout.html')
