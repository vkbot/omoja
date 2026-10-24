.class public final Lv3/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh3/f$c<",
        "Lv3/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:Lv3/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/x$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv3/x$a;->c:Lv3/x$a;

    return-void
.end method
