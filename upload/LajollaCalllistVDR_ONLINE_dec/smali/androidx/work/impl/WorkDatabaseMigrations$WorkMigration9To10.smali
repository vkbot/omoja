.class public Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;
.super Lq0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkMigration9To10"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lq0/a;-><init>(II)V

    iput-object p1, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public migrate(Ls0/a;)V
    .locals 1
    .param p1    # Ls0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lt0/b;

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-virtual {p1, v0}, Lt0/b;->M(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/utils/PreferenceUtils;->migrateLegacyPreferences(Landroid/content/Context;Ls0/a;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/utils/IdGenerator;->migrateLegacyIdGenerator(Landroid/content/Context;Ls0/a;)V

    return-void
.end method
