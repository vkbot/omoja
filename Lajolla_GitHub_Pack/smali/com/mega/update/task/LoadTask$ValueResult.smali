.class Lcom/mega/update/task/LoadTask$ValueResult;
.super Ljava/lang/Object;
.source "LoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/task/LoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field propValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field status:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lcom/mega/update/task/LoadTask$ValueResult;, "Lcom/mega/update/task/LoadTask$ValueResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
