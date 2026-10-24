.class public final Lf5/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static volatile a:Lf5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf5/d;

    invoke-direct {v0}, Lf5/d;-><init>()V

    sput-object v0, Lf5/d$b;->a:Lf5/d;

    return-void
.end method
