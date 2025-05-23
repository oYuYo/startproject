﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPI.Data;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PubsController : ControllerBase
    {
        private IDbContextFactory<PubsDbContext> dbContextFactory { get; set; } = null!;

        public PubsController(IDbContextFactory<PubsDbContext> dbContextFactory)
        {
            this.dbContextFactory = dbContextFactory;
        }

        [HttpGet("Authors")]
        public async Task<List<Author>> GetAuthorsAsync()
        {
            using (var pubs = await dbContextFactory.CreateDbContextAsync())
            {
                return await pubs.Authors.ToListAsync();
            }
        }
    }
}
