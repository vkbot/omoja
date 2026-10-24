.class public final synthetic Lm5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lm5/y;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lm5/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/s;->c:Lm5/y;

    iput-object p2, p0, Lm5/s;->r:Ljava/lang/String;

    iput-object p3, p0, Lm5/s;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lm5/s;->c:Lm5/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lm5/s;->r:Ljava/lang/String;

    invoke-static {v1}, Lm5/y;->i2(Ljava/lang/String;)V

    iget-object v2, v0, Lm5/y;->c:Lm5/h;

    iget-object v2, v2, Lm5/h;->a:Lm5/z0;

    iget-object v2, v2, Lm5/z0;->s:Lm5/z0$c;

    iget-object v2, v2, Lm5/z0$c;->a:Li5/j;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    iget-object p0, p0, Lm5/s;->x:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lm5/y;->K0(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    return-void
.end method
