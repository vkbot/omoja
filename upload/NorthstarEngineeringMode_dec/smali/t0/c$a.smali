.class public abstract Lt0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.settingslib.wifi.WifiTracker"

    iput-object v0, p0, Lt0/c$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method
