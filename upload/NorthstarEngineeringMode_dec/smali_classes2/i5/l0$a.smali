.class public final Li5/l0$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/lang/ref/SoftReference;

    new-instance v0, Li5/j;

    invoke-direct {v0}, Li5/j;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
