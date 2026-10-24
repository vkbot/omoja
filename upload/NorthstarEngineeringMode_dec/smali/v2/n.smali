.class public final Lv2/n;
.super Lv2/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv2/l;


# direct methods
.method public constructor <init>(Lv2/l;)V
    .locals 0

    iput-object p1, p0, Lv2/n;->a:Lv2/l;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.mega.sdk.linkmanager.IHiCarAIDL"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
