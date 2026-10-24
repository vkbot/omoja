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
.method public abstract createAllTables(Lt0/a;)V
.end method

.method public abstract dropAllTables(Lt0/a;)V
.end method

.method public abstract onCreate(Lt0/a;)V
.end method

.method public abstract onOpen(Lt0/a;)V
.end method

.method public abstract onPostMigrate(Lt0/a;)V
.end method

.method public abstract onPreMigrate(Lt0/a;)V
.end method

.method public abstract onValidateSchema(Lt0/a;)Landroidx/room/s;
.end method

.method public validateMigration(Lt0/a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "validateMigration is deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
