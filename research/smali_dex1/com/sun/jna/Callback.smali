.class public interface abstract Lcom/sun/jna/Callback;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Callback$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field public static final FORBIDDEN_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_NAME:Ljava/lang/String; = "callback"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "equals"

    .line 2
    .line 3
    const-string v1, "toString"

    .line 4
    .line 5
    const-string v2, "hashCode"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/sun/jna/Callback;->FORBIDDEN_NAMES:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method
