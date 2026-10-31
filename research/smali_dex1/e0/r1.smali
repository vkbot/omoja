.class public final synthetic Le0/r1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lt1/p;


# instance fields
.field public final synthetic b:Landroid/view/KeyEvent$Callback;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;)V
    .registers 5

    .line 1
    iput-object p1, p0, Le0/r1;->b:Landroid/view/KeyEvent$Callback;

    .line 2
    .line 3
    iput-object p2, p0, Le0/r1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Le0/r1;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Le0/r1;->e:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Le0/r1;->b:Landroid/view/KeyEvent$Callback;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/ModernMainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Le0/r1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Le0/r1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Le0/r1;->e:Landroid/view/KeyEvent$Callback;

    .line 14
    .line 15
    check-cast v3, Lcom/example/navistart/mainview/YMovLay;

    .line 16
    .line 17
    sget-object v4, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz p2, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move-object v1, v2

    .line 27
    :goto_1a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v4, v1, v2}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_2b

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v3, p1}, Lcom/example/navistart/mainview/YMovLay;->setYLayMovX(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_32

    .line 44
    :cond_2b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v3, p1}, Lcom/example/navistart/mainview/YMovLay;->setYLayMovY(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-static {v0}, Le0/n3;->a(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
