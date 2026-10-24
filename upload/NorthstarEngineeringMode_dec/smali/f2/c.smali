.class public final synthetic Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mega/engineeringmode/utils/RetryUtils$b;
.implements Lm5/z0$j;


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lf2/c;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lm5/z0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf2/c;->c:Ljava/lang/Object;

    check-cast v0, Li5/z1;

    iget-object p0, p0, Lf2/c;->r:Ljava/lang/Object;

    check-cast p0, Li5/c0;

    sget-object v1, Lm5/z0;->z:Le5/g;

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object p1

    if-nez v0, :cond_0

    sget-object v0, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v1, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v1, Li5/z1$a;->F1:Li5/z1$a;

    iget-object v0, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/c0;

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/xmlbeans/XmlObject;->z0:Li5/c0;

    :cond_1
    move-object v0, p0

    :cond_2
    invoke-interface {v0}, Li5/c0;->m()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lm5/h;->a:Lm5/z0;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lm5/h;->Y(Lm5/w1;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lm5/h;->g()V

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {p1, v0, p0}, Lm5/h;->o0(Li5/c0;Z)V

    iget-object p0, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lm5/h;->h0()V

    return-object p0
.end method
