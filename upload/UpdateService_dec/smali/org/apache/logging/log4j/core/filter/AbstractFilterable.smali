.class public abstract Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "AbstractFilterable.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/filter/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
    }
.end annotation


# instance fields
.field private volatile filter:Lorg/apache/logging/log4j/core/Filter;

.field private final propertyArray:[Lorg/apache/logging/log4j/core/config/Property;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Properties"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 95
    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>(Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 99
    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>(Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 100
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p2, "propertyArray"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filter",
            "propertyArray"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    .line 107
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->propertyArray:[Lorg/apache/logging/log4j/core/config/Property;

    .line 108
    return-void
.end method


# virtual methods
.method public declared-synchronized addFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .locals 3
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    monitor-enter p0

    .line 116
    if-nez p1, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    if-nez v0, :cond_1

    .line 120
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    goto :goto_0

    .line 121
    .end local p0    # "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    instance-of v0, v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    check-cast v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->addFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/logging/log4j/core/Filter;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 125
    .local v0, "filters":[Lorg/apache/logging/log4j/core/Filter;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->createFilters([Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "filters":[Lorg/apache/logging/log4j/core/Filter;
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "filter":Lorg/apache/logging/log4j/core/Filter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFilter()Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    return-object v0
.end method

.method public getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->propertyArray:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public hasFilter()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized removeFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .locals 4
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    instance-of v0, v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    check-cast v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    .line 170
    .local v0, "composite":Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->removeFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    move-result-object v2

    move-object v0, v2

    .line 171
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 172
    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    goto :goto_1

    .line 173
    .end local p0    # "this":Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 174
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/logging/log4j/core/Filter;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/Filter;

    iput-object v2, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    .line 176
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/logging/log4j/core/Filter;>;"
    goto :goto_1

    .line 177
    :cond_3
    iput-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    goto :goto_1

    .line 167
    .end local v0    # "composite":Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    :cond_4
    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 164
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 162
    .end local p1    # "filter":Lorg/apache/logging/log4j/core/Filter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->setStarting()V

    .line 188
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Filter;->start()V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->setStarted()V

    .line 192
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    return v0
.end method

.method protected stop(JLjava/util/concurrent/TimeUnit;Z)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "changeLifeCycleState"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit",
            "changeLifeCycleState"
        }
    .end annotation

    .line 206
    if-eqz p4, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->setStopping()V

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 210
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    instance-of v1, v1, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    check-cast v1, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->filter:Lorg/apache/logging/log4j/core/Filter;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Filter;->stop()V

    .line 215
    const/4 v0, 0x1

    .line 218
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 219
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;->setStopped()V

    .line 221
    :cond_3
    return v0
.end method
