with team as (

    select * from {{ ref('team_location')}}

),

team_locations as (

     select * from {{ ref('team_location')}}

),

final as (

    select
        teams.team,
        team_location.city,
        team_location.state
    from teams
    left join team locations
    on team_locations.name = teams.team

)

select * from final