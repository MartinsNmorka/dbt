{% snapshot address_snapshot_check %}

    {{
        config(
            target_schema = 'snapshots',
            strategy = 'check',
            unique_key = 'customerid',
            check_cols = ['Address']
        )
    }}

    SELECT * FROM raw.customer

{% endsnapshot %}