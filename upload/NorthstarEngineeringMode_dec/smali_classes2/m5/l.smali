.class public final synthetic Lm5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lm5/y;

.field public final synthetic b:Ljavax/xml/namespace/QName;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lm5/y;Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/l;->a:Lm5/y;

    iput-object p2, p0, Lm5/l;->b:Ljavax/xml/namespace/QName;

    iput-object p3, p0, Lm5/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lm5/l;->a:Lm5/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lm5/l;->b:Ljavax/xml/namespace/QName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lm5/y;->i2(Ljava/lang/String;)V

    iget-object v2, v0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v2}, Lm5/h;->E()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->b:Lm5/w1;

    iget-object p0, p0, Lm5/l;->c:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lm5/w1;->J0(Ljava/lang/String;Ljavax/xml/namespace/QName;)Lm5/w1;

    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attr name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
