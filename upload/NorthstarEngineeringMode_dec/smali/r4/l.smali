.class public final Lr4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l;->a:Ljava/text/NumberFormat;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method
