.class public final Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/c$a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/e;->a:Landroid/content/Context;

    const-string p1, "image_manager_disk_cache"

    iput-object p1, p0, Ln/e;->b:Ljava/lang/String;

    return-void
.end method
