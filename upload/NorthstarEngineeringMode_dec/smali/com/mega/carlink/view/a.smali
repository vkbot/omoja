.class public final Lcom/mega/carlink/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carlink/view/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/mega/carlink/view/a$a;

.field public static volatile b:Lcom/mega/carlink/view/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mega/carlink/view/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mega/carlink/view/a;->a:Lcom/mega/carlink/view/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    const-string p0, "initforkotlin"

    const-string v0, "CarLinkAppListManager"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "context.applicationContext"

    invoke-static {p0, p1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo0/d;->f(Landroid/content/Context;)Lo0/d;

    move-result-object p0

    invoke-virtual {p0}, Lo0/d;->g()V

    return-void
.end method
