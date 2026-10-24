.class public final Lcom/android/settingslib/wifi/WifiTracker$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/android/settingslib/wifi/WifiTracker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/wifi/WifiTracker$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method
