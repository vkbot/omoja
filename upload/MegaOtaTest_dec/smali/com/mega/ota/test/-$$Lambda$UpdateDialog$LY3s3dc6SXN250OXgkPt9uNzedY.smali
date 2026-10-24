.class public final synthetic Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mega/ota/test/UpdateDialog;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/ota/test/UpdateDialog;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;->f$0:Lcom/mega/ota/test/UpdateDialog;

    iput-object p2, p0, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;->f$0:Lcom/mega/ota/test/UpdateDialog;

    iget-object v1, p0, Lcom/mega/ota/test/-$$Lambda$UpdateDialog$LY3s3dc6SXN250OXgkPt9uNzedY;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->lambda$handleCpFile$1$UpdateDialog(Landroid/net/Uri;)V

    return-void
.end method
