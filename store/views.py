
from django.shortcuts import render,redirect
from django.contrib import messages
from .models import Category,Product
from django.http.response import JsonResponse

# Create your views here.
def home(request):
    category = Category.objects.all()
    products = Product.objects.all()
    context =  {'category':category,'products' : products}
    return render(request,'store/index.html',context)

def productlistAjax(request):
    products = Product.objects.filter(status=0).values_list('name',flat=True)
    productlist = list(products)
    return JsonResponse(productlist,safe=False)

def searchProduct(request):
    if request.method == 'POST':
        search = request.POST.get('search')
        if search == "":
            return redirect(request.META.get('HTTP_REFERER'))
        else:
            category = Category.objects.all()
            products = Product.objects.filter(name__icontains=search)
            context =  {'category':category,'products' : products}
            return render(request,'store/index.html',context)       
    return redirect(request.META.get('HTTP_REFERER'))

def collectionsview(request,slug):
    if(Category.objects.filter(slug=slug,status=0)):
        products = Product.objects.filter(category__slug=slug)
        category_name = Category.objects.filter(slug=slug).first()
        context = {'products':products,'category_name':category_name}
        return render(request,"store/products/index.html",context)
    else:
        messages.warning(request,"No such category Found")
        return redirect('collections')
    
def productview(request,cate_slug,prod_slug):
    if(Category.objects.filter(slug=cate_slug,status=0)):
        if(Product.objects.filter(slug=prod_slug,status=0)):
            products=Product.objects.filter(slug=prod_slug,status=0).first
            context={'products':products}
        else:
            messages.error(request,"No such product is found")
            return redirect('collections')
    else:
        messages.error(request,"No such category is found")
        return redirect('collections')
    return render(request,"store/products/view.html",context)
    