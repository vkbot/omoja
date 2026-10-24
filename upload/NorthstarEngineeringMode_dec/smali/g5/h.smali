.class public final synthetic Lg5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/osgi/framework/BundleContext;


# direct methods
.method public synthetic constructor <init>(Lorg/osgi/framework/BundleContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/h;->a:Lorg/osgi/framework/BundleContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/h;->a:Lorg/osgi/framework/BundleContext;

    check-cast p1, Lorg/osgi/framework/ServiceReference;

    invoke-interface {p0, p1}, Lorg/osgi/framework/BundleContext;->getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
