.class public final Lv3/r1;
.super Lh3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/r1$a;
    }
.end annotation


# static fields
.field public static final r:Lv3/r1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/r1$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv3/r1;->r:Lv3/r1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lv3/r1;->r:Lv3/r1$a;

    invoke-direct {p0, v0}, Lh3/a;-><init>(Lh3/f$c;)V

    return-void
.end method
