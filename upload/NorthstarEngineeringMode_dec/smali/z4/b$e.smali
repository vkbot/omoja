.class public final Lz4/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final a:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz4/c;->e:[[D

    invoke-virtual {v0}, [[D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lz4/b$e;->a:[[D

    return-void
.end method
