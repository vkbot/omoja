.class public abstract Lj5/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final a:Lj5/d$a;


# direct methods
.method public constructor <init>(Lj5/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lj5/d;->a:Lj5/d$a;

    iget-object v1, p1, Lj5/d;->b:Lj5/d$b;

    iget-boolean v2, v1, Lj5/d$b;->b:Z

    if-nez v2, :cond_0

    iput-object v0, v1, Lj5/d$b;->c:Lj5/d$a;

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lj5/d$b;->b:Z

    iput-object v0, p0, Lj5/d$a;->a:Lj5/d$a;

    iput-object p0, p1, Lj5/d;->a:Lj5/d$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lj5/n$a;Ljavax/xml/namespace/QName;Li5/c0;Ljava/lang/String;)V
.end method

.method public abstract b(Lj5/n$a;Li5/c0;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Lj5/n$a;)V
.end method

.method public abstract e(Lj5/n$a;Li5/c0;Ljava/lang/String;Z)V
.end method
