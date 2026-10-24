.class final Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    invoke-direct {v0}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;-><init>()V

    sput-object v0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->INSTANCE:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->INSTANCE:Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lr2/i;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->call(Lr2/i;)Lr2/i;

    move-result-object p0

    return-object p0
.end method

.method public call(Lr2/i;)Lr2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/i;",
            ")",
            "Lr2/i;"
        }
    .end annotation

    .line 2
    new-instance v0, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;

    invoke-direct {v0, p0, p1, p1}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError$1;-><init>(Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;Lr2/i;Lr2/i;)V

    return-object v0
.end method
