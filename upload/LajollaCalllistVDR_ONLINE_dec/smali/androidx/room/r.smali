.class public abstract Landroidx/room/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/r;->version:I

    return-void
.end method


# virtual methods
.method public abstract createAllTables(Ls0/a;)V
.end method

.method public abstract dropAllTables(Ls0/a;)V
.end method

.method public abstract onCreate(Ls0/a;)V
.end method

.method public abstract onOpen(Ls0/a;)V
.end method

.method public abstract onPostMigrate(Ls0/a;)V
.end method

.method public abstract onPreMigrate(Ls0/a;)V
.end method

.method public abstract onValidateSchema(Ls0/a;)Landroidx/room/s;
.end method

.method public validateMigration(Ls0/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "validateMigration is deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
