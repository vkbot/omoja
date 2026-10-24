.class public final Lh0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh0/h;


# direct methods
.method public constructor <init>(Lh0/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/i;->a:Lh0/h;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh0/i;->a:Lh0/h;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
